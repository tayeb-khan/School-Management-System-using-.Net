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
    [Migration("20180309114549_mark")]
    partial class mark
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "2.0.1-rtm-125")
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("SchoolWeb.Models.Mark", b =>
                {
                    b.Property<int>("StudentId")
                        .ValueGeneratedOnAdd();

                    b.Property<int?>("Agriculture");

                    b.Property<int?>("Bangla");

                    b.Property<int?>("Bangla2ndPaper");

                    b.Property<int?>("Biology");

                    b.Property<int?>("Camistry");

                    b.Property<int?>("English");

                    b.Property<int?>("English2ndPaper");

                    b.Property<int?>("HigherMath");

                    b.Property<int?>("Ict");

                    b.Property<int?>("Math");

                    b.Property<int>("RollNumber");

                    b.Property<int?>("Science");

                    b.Property<int?>("SocialScience");

                    b.Property<string>("StudentName");

                    b.HasKey("StudentId");

                    b.ToTable("Marks");
                });

            modelBuilder.Entity("SchoolWeb.Models.UserAccount", b =>
                {
                    b.Property<int>("UserId")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("ComfirmPassword");

                    b.Property<string>("Email")
                        .IsRequired();

                    b.Property<string>("Password")
                        .IsRequired();

                    b.Property<string>("Username")
                        .IsRequired();

                    b.HasKey("UserId");

                    b.ToTable("UserAccounts");
                });
#pragma warning restore 612, 618
        }
    }
}
