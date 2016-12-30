#!/usr/bin/env bash

SCM_THEME_PROMPT_DIRTY="${yellow}[✷]"
SCM_THEME_PROMPT_CLEAN=" ${bold_green}*(⦿)"
SCM_THEME_PROMPT_PREFIX=" |"
SCM_THEME_PROMPT_SUFFIX="${green}|"

GIT_THEME_PROMPT_DIRTY="${yellow}[✷]"
GIT_THEME_PROMPT_CLEAN="${bold_green}(⦿)"
GIT_THEME_PROMPT_PREFIX=" ${green}|"
GIT_THEME_PROMPT_SUFFIX="${green}|"

RVM_THEME_PROMPT_PREFIX="|"
RVM_THEME_PROMPT_SUFFIX="|"
 
function prompt_command() {
  PS1="${gray}(⦿)[${blue}\h${reset_color}]-[${blue}\w${reset_color}] ${bold_cyan}$(scm_char)${green}$(scm_prompt_info) ${green}➜ ${reset_color} "
}

THEME_SHOW_CLOCK_CHAR=${THEME_SHOW_CLOCK_CHAR:-"true"}
THEME_CLOCK_CHAR_COLOR=${THEME_CLOCK_CHAR_COLOR:-"$red"}
THEME_CLOCK_COLOR=${THEME_CLOCK_COLOR:-"$bold_cyan"}
THEME_CLOCK_FORMAT=${THEME_CLOCK_FORMAT:-"%Y-%m-%d %H:%M:%S"}

safe_append_prompt_command prompt_command
