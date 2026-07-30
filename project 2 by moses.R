
# =========================
# INITIAL DATABASE (15 students)
# ===========================
students <- data.frame(
  name = c(
    "Tolu", "Emeka", "Aisha", "John", "Fatima",
    "Chinedu", "Mary", "David", "Blessing", "Ibrahim",
    "Ngozi", "Samuel", "Zainab", "Peter", "Olamide"
  ),
  
  score = c(
    75, 62, 48, 90, 55,
    67, 80, 41, 73, 59,
    88, 46, 69, 77, 52
  ),
  
  grade = c(
    "A", "B", "D", "A", "C",
    "B", "A", "F", "A", "C",
    "A", "D", "B", "A", "C"
  ),
  
  stringsAsFactors = FALSE
)

# =========================
# MAIN MENU
# =========================
menu <- function() {
  cat("\n===== SCHOOL MANAGEMENT SYSTEM =====\n")
  cat("1. Add Student\n")
  cat("2. View Student\n")
  cat("3. View All Students\n")
  cat("4. Delete Student\n")
  cat("5. View Top Student\n")
  cat("0. Exit\n")
  
  choice <- readline("Select option: ")
  
  if (choice == "1") {
    add_student()
  } else if (choice == "2") {
    view_student()
  } else if (choice == "3") {
    print(students)
  } else if (choice == "4") {
    delete_student()
  } else if (choice == "5") {
    top_student()
  } else if (choice == "0") {
    cat("Goodbye!\n")
    return(FALSE)
  } else {
    cat("Invalid option\n")
  }
  
  return(TRUE)
}

# =========================
# ADD STUDENT
# =========================
add_student <- function() {
  name <- readline("Enter student name: ")
  score <- as.numeric(readline("Enter score: "))
  
  # grading system
  if (score >= 70) {
    grade <- "A"
  } else if (score >= 60) {
    grade <- "B"
  } else if (score >= 50) {
    grade <- "C"
  } else if (score >= 45) {
    grade <- "D"
  } else {
    grade <- "F"
  }
  
  students <<- rbind(students, data.frame(name, score, grade))
  cat("Student added successfully!\n")
}

# =========================
# VIEW ONE STUDENT
# =========================
view_student <- function() {
  name <- readline("Enter student name: ")
  
  result <- students[students$name == name, ]
  
  if (nrow(result) == 0) {
    cat("Student not found\n")
  } else {
    cat("\n--- Student Record ---\n")
    cat("Name:", result$name, "\n")
    cat("Score:", result$score, "\n")
    cat("Grade:", result$grade, "\n")
  }
}

# =========================
# DELETE STUDENT
# =========================
delete_student <- function() {
  name <- readline("Enter student name to delete: ")
  
  if (name %in% students$name) {
    students <<- students[students$name != name, ]
    cat("Student deleted successfully\n")
  } else {
    cat("Student not found\n")
  }
}

# =========================
# TOP STUDENT
# =========================
top_student <- function() {
  top <- students[which.max(students$score), ]
  
  cat("\n--- Top Student ---\n")
  cat("Name:", top$name, "\n")
  cat("Score:", top$score, "\n")
  cat("Grade:", top$grade, "\n")
}

# =========================
# RUN SYSTEM LOOP
# =========================
repeat {
  continue <- menu()
  if (!continue) break
}
2
Mary
3
4
Mary
3
5
