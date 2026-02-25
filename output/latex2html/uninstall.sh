#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'l2h_options'
wp option delete 'l2h_upgrade_options'
wp option delete 'latex2html_mathjax_custom_config'
wp option delete 'latex_chinese'
wp option delete 'latex_single_show'
wp option delete 'latex2html_mathjax_custom_cdn'
wp option delete 'latex_preamble'
wp option delete 'latex_style'

