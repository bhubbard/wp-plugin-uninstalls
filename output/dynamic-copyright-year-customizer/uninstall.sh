#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dyc_customizer_text_before'
wp option delete 'dyc_customizer_text_after'
wp option delete 'dyc_customizer_text_color'
wp option delete 'dyc_customizer_font_size'
wp option delete 'dyc_customizer_font_family'
wp option delete 'dyc_customizer_text_alignment'
wp option delete 'dyc_customizer_custom_css'
wp option delete 'dyc_customizer_start_year'
wp option delete 'dyc_customizer_copyright_symbol'
wp option delete 'dyc_customizer_company_url'
wp option delete 'dyc_customizer_dismiss_notice'

