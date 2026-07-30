
# =========================
# MAIN MENU
# =========================
menu1 <- function() {
  cat("\n====== Welcome to GLO Service ======\n")
  cat("1. Buy Data\n")
  cat("2. Borrow\n")
  cat("3. Repay Loan\n")
  cat("0. Exit\n")
  
  choice <- readline(prompt = "Select option: ")
  
  if (choice == "1") {
    buy_data()
  } else if (choice == "2") {
    cat("\nBorrow service coming soon...\n")
  } else if (choice == "3") {
    cat("\nRepay loan service coming soon...\n")
  } else if (choice == "0") {
    cat("\nThank you for using GLO Service. Goodbye!\n")
    return(FALSE)
  } else {
    cat("\nInvalid option. Try again.\n")
  }
  
  return(TRUE)
}


# =========================
# DATA MENU
# =========================
buy_data <- function() {
  cat("\n------ Data Plans ------\n")
  cat("1. 1GB - 500\n")
  cat("2. 2GB - 780\n")
  cat("3. Back\n")
  
  choice <- readline(prompt = "Select data plan: ")
  
  if (choice == "1") {
    payment_option("1GB - 500")
  } else if (choice == "2") {
    payment_option("2GB - 780")
  } else if (choice == "3") {
    return()  # go back to main menu
  } else {
    cat("\nInvalid option\n")
  }
}


# =========================
# PAYMENT MENU
# =========================
payment_option <- function(plan) {
  cat("\n------ Payment Method ------\n")
  cat("1. Airtime\n")
  cat("2. Bank\n")
  cat("3. Loan\n")
  
  choice <- readline(prompt = "Choose payment method: ")
  
  if (choice == "1") {
    cat("\nYou successfully bought", plan, "using Airtime\n")
  } else if (choice == "2") {
    cat("\nYou successfully bought", plan, "via Bank\n")
  } else if (choice == "3") {
    cat("\nYou successfully bought", plan, "on Loan\n")
  } else {
    cat("\nInvalid payment option\n")
  }
}


# =========================
# RUN SYSTEM (IMPORTANT)
# =========================
repeat {
  continue <- menu1()
  if (!continue) break
}

