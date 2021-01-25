variable iam_users {
  description = "Map of users to configuration."
  type        = map
  default     = {
    apple = {
      groups = [
        "developers"
      ]
    }
    "banana.fish" = {
      groups =  [
        "admins"
      ]
    }
  #   cherry = {
  #     groups = []
  #   }
  #   dita = {
  #     groups = []
  #   }
  }
}

# variable iam_system_users {
#   description = "Map of system users."
#   type        = map
#   default     = {
#     bot-1 = {
#       groups = [
#         "bot"
#       ]
#     }
#     "bot.bot" = {
#       groups =  [
#         "bot"
#       ]
#     }
#     lambda_func1 = {
#       groups = []
#     }
#     rds_full = {
#       groups = []
#     }
#   }
# }
