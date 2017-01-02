#!/usr/bin/env bash

SCM_THEME_PROMPT_DIRTY="${yellow}[✷]${reset_color}"
SCM_THEME_PROMPT_CLEAN="${bold_green}(⦿)${reset_color}"
SCM_THEME_PROMPT_PREFIX="${reset_color}|${bold_green}"
SCM_THEME_PROMPT_SUFFIX="${reset_color}|"

GIT_THEME_PROMPT_DIRTY="${yellow}[✷]${reset_color}"
GIT_THEME_PROMPT_CLEAN="${bold_green}(⦿)${reset_color}"
GIT_THEME_PROMPT_PREFIX="${reset_color}|${bold_green}"
GIT_THEME_PROMPT_SUFFIX="${reset_color}|"

function prompt_command() {
  PS1="${blue}(⦿)${reset_color}[\h]-[\w] $(scm_char) ${green}$(scm_prompt_info) ${green}➜ ${reset_color} "
}

THEME_SHOW_CLOCK_CHAR=${THEME_SHOW_CLOCK_CHAR:-"true"}
THEME_CLOCK_CHAR_COLOR=${THEME_CLOCK_CHAR_COLOR:-"$red"}
THEME_CLOCK_COLOR=${THEME_CLOCK_COLOR:-"$bold_cyan"}
THEME_CLOCK_FORMAT=${THEME_CLOCK_FORMAT:-"%Y-%m-%d %H:%M:%S"}

safe_append_prompt_command prompt_command
