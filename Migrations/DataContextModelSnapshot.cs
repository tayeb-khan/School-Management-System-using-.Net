﻿// <auto-generated />
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage;
using Microsoft.EntityFrameworkCore.Storage.Internal;
using SchoolWeb.Models;
using System;

namespace SchoolWeb.Migrations
{
    [DbContext(typeof(DataContext))]
    partial class DataContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "2.0.1-rtm-125")
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("SchoolWeb.Models.Actors", b =>
                {
                    b.Property<int>("Actor_Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Actor_Type")
                        .IsRequired();

                    b.HasKey("Actor_Id");

                    b.ToTable("Actor");
                });

            modelBuilder.Entity("SchoolWeb.Models.Admission", b =>
                {
                    b.Property<int>("StudentId")
                        .ValueGeneratedOnAdd();

                    b.Property<DateTime>("Birthdate");

                    b.Property<string>("Class")
                        .IsRequired();

                    b.Property<string>("Contact")
                        .IsRequired()
                        .HasMaxLength(15);

                    b.Property<string>("FatherName")
                        .IsRequired()
                        .HasMaxLength(50);

                    b.Property<string>("Guardian");

                    b.Property<string>("GuardianDetails")
                        .IsRequired()
                        .HasMaxLength(80);

                    b.Property<string>("LastSchool")
                        .IsRequired()
                        .HasMaxLength(100);

                    b.Property<string>("MotherName")
                        .IsRequired()
                        .HasMaxLength(50);

                    b.Property<string>("PerPost")
                        .IsRequired()
                        .HasMaxLength(50);

                    b.Property<string>("PerVill")
                        .IsRequired()
                        .HasMaxLength(50);

                    b.Property<string>("PerZila")
                        .IsRequired()
                        .HasMaxLength(50);

                    b.Property<string>("PrePost")
                        .IsRequired()
                        .HasMaxLength(50);

                    b.Property<string>("PreVill")
                        .IsRequired()
                        .HasMaxLength(50);

                    b.Property<string>("PreZila")
                        .IsRequired()
                        .HasMaxLength(50);

                    b.Property<string>("Religion")
                        .IsRequired()
                        .HasMaxLength(50);

                    b.Property<string>("StudentNameBan")
                        .IsRequired()
                        .HasMaxLength(50);

                    b.Property<string>("StudentNameEng")
                        .IsRequired()
                        .HasMaxLength(50);

                    b.HasKey("StudentId");

                    b.ToTable("Admitted");
                });

            modelBuilder.Entity("SchoolWeb.Models.Classes", b =>
                {
                    b.Property<int>("Class_Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Class_Name")
                        .IsRequired();

                    b.HasKey("Class_Id");

                    b.ToTable("Class");
                });

            modelBuilder.Entity("SchoolWeb.Models.ExamTypes", b =>
                {
                    b.Property<int>("ExamType_Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("ExamType_Name")
                        .IsRequired()
                        .HasMaxLength(20);

                    b.HasKey("ExamType_Id");

                    b.ToTable("ExamType");
                });

            modelBuilder.Entity("SchoolWeb.Models.Groups", b =>
                {
                    b.Property<int>("Group_Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Group_Name")
                        .IsRequired();

                    b.HasKey("Group_Id");

                    b.ToTable("Group");
                });

            modelBuilder.Entity("SchoolWeb.Models.Results", b =>
                {
                    b.Property<int>("Result_Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("Class_Id");

                    b.Property<int>("ExamType_Id");

                    b.Property<int>("Mark");

                    b.Property<int>("Section_Id");

                    b.Property<int>("Student_Id");

                    b.Property<int>("Subject_Id");

                    b.Property<string>("Year")
                        .IsRequired();

                    b.HasKey("Result_Id");

                    b.HasIndex("Class_Id");

                    b.HasIndex("ExamType_Id");

                    b.HasIndex("Section_Id");

                    b.HasIndex("Subject_Id");

                    b.ToTable("Result");
                });

            modelBuilder.Entity("SchoolWeb.Models.Sections", b =>
                {
                    b.Property<int>("Section_Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Section_Name")
                        .IsRequired();

                    b.HasKey("Section_Id");

                    b.ToTable("Section");
                });

            modelBuilder.Entity("SchoolWeb.Models.Subjects", b =>
                {
                    b.Property<int>("Subject_Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Subject_Name")
                        .IsRequired()
                        .HasMaxLength(50);

                    b.HasKey("Subject_Id");

                    b.ToTable("Subject");
                });

            modelBuilder.Entity("SchoolWeb.Models.Teacher", b =>
                {
                    b.Property<int>("Teacher_Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("Contact");

                    b.Property<string>("Designation")
                        .HasMaxLength(40);

                    b.Property<string>("Teacher_Name")
                        .IsRequired()
                        .HasMaxLength(50);

                    b.HasKey("Teacher_Id");

                    b.ToTable("Teachers");
                });

            modelBuilder.Entity("SchoolWeb.Models.UserAccounts", b =>
                {
                    b.Property<int>("UserId")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Account_Type")
                        .IsRequired();

                    b.Property<string>("ComfirmPassword");

                    b.Property<string>("Email")
                        .IsRequired();

                    b.Property<string>("Password")
                        .IsRequired();

                    b.Property<string>("StudentId");

                    b.Property<string>("Username")
                        .IsRequired();

                    b.HasKey("UserId");

                    b.ToTable("UserAccounts");
                });

            modelBuilder.Entity("SchoolWeb.Models.Results", b =>
                {
                    b.HasOne("SchoolWeb.Models.Classes", "Class")
                        .WithMany()
                        .HasForeignKey("Class_Id")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("SchoolWeb.Models.ExamTypes", "ExamType")
                        .WithMany()
                        .HasForeignKey("ExamType_Id")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("SchoolWeb.Models.Sections", "Section")
                        .WithMany()
                        .HasForeignKey("Section_Id")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("SchoolWeb.Models.Subjects", "Subject")
                        .WithMany()
                        .HasForeignKey("Subject_Id")
                        .OnDelete(DeleteBehavior.Cascade);
                });
#pragma warning restore 612, 618
        }
    }
}
