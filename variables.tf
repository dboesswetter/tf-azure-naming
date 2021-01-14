variable "unique-include-numbers" {
    type = bool
    default = true
}

variable "unique-length" {
    type = string
    default = 4
}

variable "unique-seed" {
    type = string
    default = ""
}

variable "location" {
    type = string
    description = "Location where the resource lives (will be abbreviated by this module)"
}

variable "stage" {
    type = string
}

variable "name" {
    type = list(string)
    default = []
}
