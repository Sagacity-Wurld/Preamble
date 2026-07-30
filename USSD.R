# ========================
# GLO SERVICE
# ========================
menu1 <- function(){
  cat("\n WELCOME \n")
  cat("1. Buy Data\n")
  cat("2. Gift Data\n")
  cat("3. Share Data\n")
  cat("4. Data Bal\n")
  cat("5. Voice Plans\n")
  cat("6. MySpec Offer\n")
  cat("7. Collabo Combo\n")
  cat("8. Roaming Offers\n")
  cat("9. AlwaysOn Data\n")
  cat("10. Youtube Plans\n")
  cat("11. Borrow Credit\n")
  cat("0. Exit")
  
  choice<- readline(prompt = "Select option: ")
  
  if (choice == "1") {
    buy_data()
  } else if (choice == "2") {
    gift_data()
  } else if (choice == "3") {
    share_data()
  } else if (choice == "4") {
    cat("\nBorrow service coming soon...\n")
  } else if (choice == "5") {
    cat("\nBorrow service coming soon...\n")
  } else if (choice == "6") {
    cat("\nBorrow service coming soon...\n")
  } else if (choice == "7") {
    cat("\nBorrow service coming soon...\n")
  } else if (choice == "8") {
    cat("\nBorrow service coming soon...\n")
  } else if (choice == "9") {
    cat("\nBorrow service coming soon...\n")
  } else if (choice == "10") {
    cat("\nBorrow service coming soon...\n")
  } else if (choice == "11") {
    cat("\nBorrow service coming soon...\n")
  } else if (choice == "0") {
    cat("\n THANKS FOR USING GLO SERVICE\n")
    return(FALSE)
  } else { 
    cat("\nInvalid option. Try again. \n")
  }
  return(TRUE)
}  


#====================
# BUY DATA MENU
#====================
buy_data <- function() {
  cat("\n Renewal \n")
  cat("1. proceed (Auto-Renewal)\n")
  cat("2. proceed (one-off)\n")
  cat("99. Back\n")
  cat("0. Exit\n")
  
  choice <- readline(prompt = "Select Renewal plan: ")
  
  if (choice == "1") {
    proceed_AR()
  } else if (choice == "2") {
    proceed_OF()
  } else if (choice == "99") {
    return()
  } else if (choice == "0") {
    cat("\nTHANKS FOR USING GLO SERVICE\n")
    return(FALSE)
  }
  return(TRUE)
}

#================================
#PROCEED (AUTO-RENEWAL)
#================================
proceed_AR <- function() {
  cat("\n AUTO RENEWAL \n")
  cat("1. Daily-Weekly\n")
  cat("2. Monthly\n")
  cat("3. Mega Data\n")
  cat("4. Super Mega\n")
  cat("5. Social Data\n")
  cat("6. Night Weekend\n")
  cat("99. Back\n")
  cat("0. Exit\n")
  
  choice <- readline(prompt = " Select Auto-Renewal plan: ")
  
  if (choice == "1") {
    daily_weekly()
  } else if (choice == "2") {
    monthly_p()
  } else if (choice == "3") {
    mega_data()
  } else if (choice == "4") {
    super_mega()
  } else if (choice == "5") {
    social_data()
  } else if (choice == "6") {
    night_weekend()
  } else if (choice == "99") {
    return()
  } else if (choice == "0") {
    cat("\nTHANKS FOR USING GLO SERVICE\n")
    return(FALSE)
  }
  
  return(TRUE)
}  

#==========================
#DAILY-WEEKLY PLAN
#==========================
daily_weekly <- function() {
  cat("\nDAILY-WEEKLY PLAN\n")
  cat("1. N100=125MB 1 Day incl 5MB nite\n")
  cat("2. N200=275MB 2 Days incl 25MB nite\n")
  cat("3. N500=1.54GB 7Days incl 5MB nite\n")
  cat("4. N45MB 1 Day incl 5MB nite\n" )
  cat("99. Back\n")
  cat("0. Exit\n")
  
  choice <- readline(prompt = "Select Plan: ")
  
  if (choice == "1") {
    cat("\n Congratulations you have subscribed to 125MB 1 Day!!!\n")
  } else if (choice == "2") {
    cat("\n Congratulations you have subscribed to 275MB 2 Days!!!\n")
  } else if (choice == "3") {
    cat("\n Congratulations you have subscribed to 1.54GB 7 days!!!\n")
  } else if (choice == "4") {
    cat("\n Congratulations you have subscribed to 45MB 1 Day!!!\n")
  } else if (choice == "99") {
    return(proceed_AR)
  } else if (choice == "0") {
    cat("\n Thanks for Using GLO SERVICE!!!\n")
    return(FALSE)
  }
  return(TRUE)
}

#==============================
#MONTHLY PLAN
#=============================
monthly_p <- function() {
  cat("\n MONTHLY PLAN\n")
  cat("1. N1000=2.6GB 30 Days incl 1.5GB nite\n")
  cat("2. N1500=5.2GB 30 Days incl 3GB nite\n")
  cat("3. N2000=6.25GB 30 Days incl 3GB nite\n")
  cat("4. N2500=7.25GB 30 Days incl 3GB nite\n")
  cat("99. Back\n")
  cat("0. Exit\n")
  
  choice <- readline(prompt = "Select Plan: ")
  
  if (choice == "1") {
    cat("\n Congratulations you have subscribed to 1.5GB 30 Days!!!\n")
  } else if (choice == "2") {
    cat("\n Congratulations you have subscribed to 3GB 30 Days!!!\n")
  } else if (choice == "3") {
    cat("\n Congratulations you have subscribed to 6.25GB 30 days!!!\n")
  } else if (choice == "4") {
    cat("\n Congratulations you have subscribed to 7.25GB 30 Day!!!\n")
  } else if (choice == "99") {
    return()
  } else if (choice == "0") {
    cat("\n Thanks for Using GLO SERVICE!!!\n")
    return(FALSE)
  }
  return(TRUE)
}
#====================================
#MEGA DATA
#====================================

mega_data <- function() {
  cat("\nMEGA DATA\n")
  cat("1. N10000=42GB 30 Days incl 4GB nite\n")
  cat("2. N15000=64GB 30 Days incl 2GB nite\n")
  cat("3. N20000=107GB 30 Days incl 2GB nite\n")
  cat("99. Back\n")
  cat("0. Exit\n")
  
  choice <- readline(prompt = "Select Plan: ")
  
  if (choice == "1") {
    cat("\n Congratulations you have subscribed to 42GB 30 Days!!!\n")
  } else if (choice == "2") {
    cat("\n Congratulations you have subscribed to 64GB 30 Days!!!\n")
  } else if (choice == "3") {
    cat("\n Congratulations you have subscribed to 107GB 30 days!!!\n")
  } else if (choice == "99") {
    return()
  } else if (choice == "0") {
    cat("\n Thanks for Using GLO SERVICE!!!\n")
    return(FALSE)
  }
  return(TRUE)
}


#=======================
#SUPERMEGA DATA
#======================

super_mega <- function() {
  cat("\nMEGA DATA\n")
  cat("1. N25000=135GB 30 Days\n")
  cat("2. N30000=165GB 30 Days\n")
  cat("3. N40000=220GB 30 Days\n")
  cat("4. N50000=310GB 60 Days\n")
  cat("5. N60000=355GB 90 Days\n")
  cat("6. N75000=475GB 90 Days\n")
  cat("99. Back\n")
  cat("0. Exit\n")
  
  choice <- readline(prompt = "Select Plan: ")
  
  if (choice == "1") {
    cat("\n Congratulations you have subscribed to 135GB 30 Days!!!\n")
  } else if (choice == "2") {
    cat("\n Congratulations you have subscribed to 165GB 30 Days!!!\n")
  } else if (choice == "3") {
    cat("\n Congratulations you have subscribed to 220GB 30 days!!!\n")
  } else if (choice == "4") {
    cat("\n Congratulations you have subscribed to 310GB 60 days!!!\n")
  } else if (choice == "5") {
    cat("\n Congratulations you have subscribed to 355GB 90 days!!!\n")
  } else if (choice == "6") {
    cat("\n Congratulations you have subscribed to 475GB 90 days!!!\n")
  } else if (choice == "99") {
    return()
  } else if (choice == "0") {
    cat("\n Thanks for Using GLO SERVICE!!!\n")
    return(FALSE)
  }
  return(TRUE)
}
  
#========================
#SOCIAL DATA
#========================
social_data <- function() {
  cat("\nSOCIAL DATA\n")
  cat("1. N50=135MB 3 Days\n")
  cat("2. N100=335MB 7 Days\n")
  cat("3. N300=1.1GB 10 Days\n")
  cat("4. N500=1.8GB 15 Days\n" )
  cat("99. Back\n")
  cat("0. Exit\n")
  
  choice <- readline(prompt = "Select Plan: ")
  
  if (choice == "1") {
    cat("\n Congratulations you have subscribed to 135MB 3 Days!!!\n")
  } else if (choice == "2") {
    cat("\n Congratulations you have subscribed to 335MB 7 Days!!!\n")
  } else if (choice == "3") {
    cat("\n Congratulations you have subscribed to 1.1GB 10 days!!!\n")
  } else if (choice == "4") {
    cat("\n Congratulations you have subscribed to 1.8GB 15 days!!!\n")
  } else if (choice == "99") {
    return()
  } else if (choice == "0") {
    cat("\n Thanks for Using GLO SERVICE!!!\n")
    return(FALSE)
  }
  return(TRUE)
}


#==========================
#NIGHT WEEKEND
#=========================
night_weekend <- function() {
  cat("\n NIGHT WEEKEND PLAN\n")
  cat("1. N60=250MB 1Day (12am-05am)\n")
  cat("2. N120=750MB 1Day (12am-05am)\n")
  cat("3. N200=875MB 2Days SAT-SUN\n")
  cat("4. N500=2.5GB 2Days SAT-SUN\n" )
  cat("99. Back\n")
  cat("0. Exit\n")
  
  choice <- readline(prompt = "Select Plan: ")
  
  if (choice == "1") {
    cat("\n Congratulations you have subscribed to 250MB 1Day (12am-05am)!!!\n")
  } else if (choice == "2") {
    cat("\n Congratulations you have subscribed to 750MB 1Day (12am-05am)!!!\n")
  } else if (choice == "3") {
    cat("\n Congratulations you have subscribed to 875MB SAT-SUN!!!\n")
  } else if (choice == "4") {
    cat("\n Congratulations you have subscribed to 2.5GB SAT-SUN!!!\n")
  } else if (choice == "99") {
    return()
  } else if (choice == "0") {
    cat("\n Thanks for Using GLO SERVICE!!!\n")
    return(FALSE)
  }
  return(TRUE)
  
}

#========================
#PROCEED ONE-OFF
#========================

proceed_OF <- function() {
  cat("\n AUTO RENEWAL \n")
  cat("1. Daily-Weekly\n")
  cat("2. Monthly\n")
  cat("3. Mega Data\n")
  cat("4. Super Mega\n")
  cat("5. Social Data\n")
  cat("6. Night Weekend\n")
  cat("99. Back\n")
  cat("0. Exit\n")
  
  choice <- readline(prompt = " Select Auto-Renewal plan: ")
  
  if (choice == "1") {
    daily_weekly()
  } else if (choice == "2") {
    monthly_p()
  } else if (choice == "3") {
    mega_data()
  } else if (choice == "4") {
    super_mega()
  } else if (choice == "5") {
    social_data()
  } else if (choice == "6") {
    night_weekend()
  } else if (choice == "99") {
    return()
  } else if (choice == "0") {
    cat("\nTHANKS FOR USING GLO SERVICE\n")
    return(FALSE)
  }
  
  return(TRUE)
}  



#=========================
#GIFT DATA
#============================
gift_data <- function() {
  cat("\n GIFT DATA\n")
  cat("1. Daily-Weekly\n")
  cat("2. Monthly\n")
  cat("3. Mega Data\n")
  cat("4. Super Mega\n")
  cat("5. Social Data\n")
  cat("6. Night Weekend\n")
  cat("99. Back\n")
  cat("0. Exit\n")
  
  choice <- readline(prompt = " Select plan: ")
  if (choice == "1") {
    daily_weekly1()
  } else if (choice == "2") {
    monthly_p1()
  } else if (choice == "3") {
    mega_data1()
  } else if (choice == "4") {
    super_mega1()
  } else if (choice == "5") {
    social_data1()
  } else if (choice == "6") {
    night_weekend1()
  } else if (choice == "99") {
    return()
  } else if (choice == "0") {
    cat("\nTHANKS FOR USING GLO SERVICE\n")
    return(FALSE)
  }
  
  return(TRUE)
}  

#==========================
#DAILY-WEEKLY PLAN
#==========================
daily_weekly1 <- function() {
  cat("\nDAILY-WEEKLY PLAN\n")
  cat("1. N100=125MB 1 Day incl 5MB nite\n")
  cat("2. N200=275MB 2 Days incl 25MB nite\n")
  cat("3. N500=1.54GB 7Days incl 5MB nite\n")
  cat("4. N45MB 1 Day incl 5MB nite\n" )
  cat("99. Back\n")
  cat("0. Exit\n")
  
  choice <- readline(prompt = "Select Plan: ")
  
  if (choice == "1") {
    number <- readline(prompt = "RECIPIENT NUMBER: ")
    confirm <- readline(prompt = paste("send 125MB to", number, "? (y/n): "))
    if (confirm == "y") {
      cat("\n Data Successfully sent to", number, "\n")
    } else {"\n Transaction cancelled\n"}
  } else if (choice == "2") {
    number <- readline(prompt = "RECIPIENT NUMBER: ")
    confirm <- readline(prompt = paste("send 125MB to", number, "? (y/n): "))
    if (confirm == "y") {
      cat("\n Data Successfully sent to", number, "\n")
    } else {"\n Transaction cancelled\n"}
  } else if (choice == "3") {
    number <- readline(prompt = "RECIPIENT NUMBER: ")
    confirm <- readline(prompt = paste("send 125MB to", number, "? (y/n): "))
    if (confirm == "y") {
      cat("\n Data Successfully sent to", number, "\n")
    } else {"\n Transaction cancelled\n"}
  } else if (choice == "4") {
    number <- readline(prompt = "RECIPIENT NUMBER: ")
    confirm <- readline(prompt = paste("send 125MB to", number, "? (y/n): "))
    if (confirm == "y") {
      cat("\n Data Successfully sent to", number, "\n")
    } else {"\n Transaction cancelled\n"}
  } else if (choice == "99") {
    return()
  } else if (choice == "0") {
    cat("\n Thanks for Using GLO SERVICE!!!\n")
    return(FALSE)
  }
  return(TRUE)
}

#==============================
#MONTHLY PLAN
#=============================
monthly_p1 <- function() {
  cat("\n MONTHLY PLAN\n")
  cat("1. N1000=2.6GB 30 Days incl 1.5GB nite\n")
  cat("2. N1500=5.2GB 30 Days incl 3GB nite\n")
  cat("3. N2000=6.25GB 30 Days incl 3GB nite\n")
  cat("4. N2500=7.25GB 30 Days incl 3GB nite\n")
  cat("99. Back\n")
  cat("0. Exit\n")
  
  choice <- readline(prompt = "Select Plan: ")
  
  if (choice == "1") {
    number <- readline(prompt = "RECIPIENT NUMBER: ")
    confirm <- readline(prompt = paste("send 2.6GB to", number, "? (y/n): "))
    if (confirm == "y") {
      cat("\n Data Successfully sent to", number, "\n")
    } else {"\n Transaction cancelled\n"}
  } else if (choice == "2") {
    number <- readline(prompt = "RECIPIENT NUMBER: ")
    confirm <- readline(prompt = paste("send 5.2GB to", number, "? (y/n): "))
    if (confirm == "y") {
      cat("\n Data Successfully sent to", number, "\n")
    } else {"\n Transaction cancelled\n"}
  } else if (choice == "3") {
    number <- readline(prompt = "RECIPIENT NUMBER: ")
    confirm <- readline(prompt = paste("send 6.25GB to", number, "? (y/n): "))
    if (confirm == "y") {
      cat("\n Data Successfully sent to", number, "\n")
    } else {"\n Transaction cancelled\n"}
  } else if (choice == "4") {
    number <- readline(prompt = "RECIPIENT NUMBER: ")
    confirm <- readline(prompt = paste("send 7.25GB to", number, "? (y/n): "))
    if (confirm == "y") {
      cat("\n Data Successfully sent to", number, "\n")
    } else {"\n Transaction cancelled\n"}
  } else if (choice == "99") {
    return()
  } else if (choice == "0") {
    cat("\n Thanks for Using GLO SERVICE!!!\n")
    return(FALSE)
  }
  return(TRUE)
}
#====================================
#MEGA DATA
#====================================

mega_data1 <- function() {
  cat("\nMEGA DATA\n")
  cat("1. N10000=42GB 30 Days incl 4GB nite\n")
  cat("2. N15000=64GB 30 Days incl 2GB nite\n")
  cat("3. N20000=107GB 30 Days incl 2GB nite\n")
  cat("99. Back\n")
  cat("0. Exit\n")
  
  choice <- readline(prompt = "Select Plan: ")
  
  if (choice == "1") {
    number <- readline(prompt = "RECIPIENT NUMBER: ")
    confirm <- readline(prompt = paste("send 42GB to", number, "? (y/n): "))
    if (confirm == "y") {
      cat("\n Data Successfully sent to", number, "\n")
    } else {"\n Transaction cancelled\n"}
  } else if (choice == "2") {
    number <- readline(prompt = "RECIPIENT NUMBER: ")
    confirm <- readline(prompt = paste("send 64GB to", number, "? (y/n): "))
    if (confirm == "y") {
      cat("\n Data Successfully sent to", number, "\n")
    } else {"\n Transaction cancelled\n"}
  } else if (choice == "3") {
    number <- readline(prompt = "RECIPIENT NUMBER: ")
    confirm <- readline(prompt = paste("send 107GB to", number, "? (y/n): "))
    if (confirm == "y") {
      cat("\n Data Successfully sent to", number, "\n")
    } else {"\n Transaction cancelled\n"}
  } else if (choice == "99") {
    return()
  } else if (choice == "0") {
    cat("\n Thanks for Using GLO SERVICE!!!\n")
    return(FALSE)
  }
  return(TRUE)
}


#=======================
#SUPERMEGA DATA
#======================

super_mega1 <- function() {
  cat("\nMEGA DATA\n")
  cat("1. N25000=135GB 30 Days\n")
  cat("2. N30000=165GB 30 Days\n")
  cat("3. N40000=220GB 30 Days\n")
  cat("4. N50000=310GB 60 Days\n")
  cat("5. N60000=355GB 90 Days\n")
  cat("6. N75000=475GB 90 Days\n")
  cat("99. Back\n")
  cat("0. Exit\n")
  
  choice <- readline(prompt = "Select Plan: ")
  
  if (choice == "1") {
    number <- readline(prompt = "RECIPIENT NUMBER: ")
    confirm <- readline(prompt = paste("send 135GB to", number, "? (y/n): "))
    if (confirm == "y") {
      cat("\n Data Successfully sent to", number, "\n")
    } else {"\n Transaction cancelled\n"}
  } else if (choice == "2") {
    number <- readline(prompt = "RECIPIENT NUMBER: ")
    confirm <- readline(prompt = paste("send 165GB to", number, "? (y/n): "))
    if (confirm == "y") {
      cat("\n Data Successfully sent to", number, "\n")
    } else {"\n Transaction cancelled\n"}
  } else if (choice == "3") {
    number <- readline(prompt = "RECIPIENT NUMBER: ")
    confirm <- readline(prompt = paste("send 220GB to", number, "? (y/n): "))
    if (confirm == "y") {
      cat("\n Data Successfully sent to", number, "\n")
    } else {"\n Transaction cancelled\n"}
  } else if (choice == "4") {
    number <- readline(prompt = "RECIPIENT NUMBER: ")
    confirm <- readline(prompt = paste("send 310GB to", number, "? (y/n): "))
    if (confirm == "y") {
      cat("\n Data Successfully sent to", number, "\n")
    } else {"\n Transaction cancelled\n"}
  } else if (choice == "5") {
    number <- readline(prompt = "RECIPIENT NUMBER: ")
    confirm <- readline(prompt = paste("send 355GB to", number, "? (y/n): "))
    if (confirm == "y") {
      cat("\n Data Successfully sent to", number, "\n")
    } else {"\n Transaction cancelled\n"}
  } else if (choice == "6") {
    number <- readline(prompt = "RECIPIENT NUMBER: ")
    confirm <- readline(prompt = paste("send 475GB to", number, "? (y/n): "))
    if (confirm == "y") {
      cat("\n Data Successfully sent to", number, "\n")
    } else {"\n Transaction cancelled\n"}
  } else if (choice == "99") {
    return()
  } else if (choice == "0") {
    cat("\n Thanks for Using GLO SERVICE!!!\n")
    return(FALSE)
  }
  return(TRUE)
}

#========================
#SOCIAL DATA
#========================
social_data1 <- function() {
  cat("\nSOCIAL DATA\n")
  cat("1. N50=135MB 3 Days\n")
  cat("2. N100=335MB 7 Days\n")
  cat("3. N300=1.1GB 10 Days\n")
  cat("4. N500=1.8GB 15 Days\n" )
  cat("99. Back\n")
  cat("0. Exit\n")
  
  choice <- readline(prompt = "Select Plan: ")
  
  if (choice == "1") {
    number <- readline(prompt = "RECIPIENT NUMBER: ")
    confirm <- readline(prompt = paste("send 135MB to", number, "? (y/n): "))
    if (confirm == "y") {
      cat("\n Data Successfully sent to", number, "\n")
    } else {"\n Transaction cancelled\n"}
  } else if (choice == "2") {
    number <- readline(prompt = "RECIPIENT NUMBER: ")
    confirm <- readline(prompt = paste("send 335MB to", number, "? (y/n): "))
    if (confirm == "y") {
      cat("\n Data Successfully sent to", number, "\n")
    } else {"\n Transaction cancelled\n"}
  } else if (choice == "3") {
    number <- readline(prompt = "RECIPIENT NUMBER: ")
    confirm <- readline(prompt = paste("send 1.1GB to", number, "? (y/n): "))
    if (confirm == "y") {
      cat("\n Data Successfully sent to", number, "\n")
    } else {"\n Transaction cancelled\n"}
  } else if (choice == "4") {
    number <- readline(prompt = "RECIPIENT NUMBER: ")
    confirm <- readline(prompt = paste("send 1.8GB to", number, "? (y/n): "))
    if (confirm == "y") {
      cat("\n Data Successfully sent to", number, "\n")
    } else {"\n Transaction cancelled\n"}
  } else if (choice == "99") {
    return()
  } else if (choice == "0") {
    cat("\n Thanks for Using GLO SERVICE!!!\n")
    return(FALSE)
  }
  return(TRUE)
}


#==========================
#NIGHT WEEKEND
#=========================
night_weekend1 <- function() {
  cat("\n NIGHT WEEKEND PLAN\n")
  cat("1. N60=250MB 1Day (12am-05am)\n")
  cat("2. N120=750MB 1Day (12am-05am)\n")
  cat("3. N200=875MB 2Days SAT-SUN\n")
  cat("4. N500=2.5GB 2Days SAT-SUN\n" )
  cat("99. Back\n")
  cat("0. Exit\n")
  
  choice <- readline(prompt = "Select Plan: ")
  
  if (choice == "1") {
    number <- readline(prompt = "RECIPIENT NUMBER: ")
    confirm <- readline(prompt = paste("send 250MB to", number, "? (y/n): "))
    if (confirm == "y") {
      cat("\n Data Successfully sent to", number, "\n")
    } else {"\n Transaction cancelled\n"}
  } else if (choice == "2") {
    number <- readline(prompt = "RECIPIENT NUMBER: ")
    confirm <- readline(prompt = paste("send 750MB to", number, "? (y/n): "))
    if (confirm == "y") {
      cat("\n Data Successfully sent to", number, "\n")
    } else {"\n Transaction cancelled\n"}
  } else if (choice == "3") {
    number <- readline(prompt = "RECIPIENT NUMBER: ")
    confirm <- readline(prompt = paste("send 875MB to", number, "? (y/n): "))
    if (confirm == "y") {
      cat("\n Data Successfully sent to", number, "\n")
    } else {"\n Transaction cancelled\n"}
  } else if (choice == "4") {
    number <- readline(prompt = "RECIPIENT NUMBER: ")
    confirm <- readline(prompt = paste("send 2.5GB to", number, "? (y/n): "))
    if (confirm == "y") {
      cat("\n Data Successfully sent to", number, "\n")
    } else {"\n Transaction cancelled\n"}
  } else if (choice == "99") {
    return()
  } else if (choice == "0") {
    cat("\n Thanks for Using GLO SERVICE!!!\n")
    return(FALSE)
  }
  return(TRUE)
  
}

#========================
#SHARE DATA
#========================
shared_numbers <- c()
share_data <- function() {
  cat("\n SHARE DATA\n")
  cat("1. Share data\n")
  cat("2. Unshare data\n")
  cat("3. List of shared data\n")
  cat("0. Exit")
  
  choice <- readline(prompt = "select option: ")
  
  if (choice == "1") {
    number <- readline(prompt= "Please Enter GLo subscriber number, you want to share data with.: " )
    shared_numbers <<- c(shared_numbers, number)
    cat("\n You have successfully shared your plan with", number, "You can also GIFT a data plan. To gift a data plan, visit hsi.glo.com or simply dial *312#\n")
  } else if (choice == 2) {
    numbers <- readline(prompt = "Please Enter GLO subscriber number, you want to unshare data with: ")
    shared_numbers <<- shared_numbers[shared_numbers!=numbers]
    cat("\n You have successfully removed", numbers, "from sharing your subscription")
  } else if (choice =="3") {
    cat("\nLIST OF SHARED DATA\n")
    print(shared_numbers)
  } else if (choice == "0") {
    cat("\n THANKS FOR CHOOSING GLO NETWORK\n")
    return(FALSE)
  } else {
    cat("\nInvalid OPtion. Try again\n")
  }
  return(TRUE)
}


repeat {
  continue <- menu1()
  if (!continue) break
}
33
31
07056242289
3
1
07012710548
3
1
2

07012710548
3
2
3
3
1
c(07012710548, 07056242289)
3
3
3
2
c(07012710548, 07056242289)
