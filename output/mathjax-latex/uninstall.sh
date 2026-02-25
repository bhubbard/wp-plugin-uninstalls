#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kblog_mathjax_force_load'
wp option delete 'kblog_mathjax_latex_inline'
wp option delete 'kblog_mathjax_use_wplatex_syntax'
wp option delete 'kblog_mathjax_use_cdn'
wp option delete 'kblog_mathjax_custom_location'
wp option delete 'kblog_mathjax_config'

