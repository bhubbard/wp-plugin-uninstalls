#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'njt_nofi_review'
wp option delete 'njt_nofi_open_after_day'
wp option delete 'njt_nofi_text_wpml_translate'
wp option delete 'njt_nofi_text_mobile_wpml_translate'
wp option delete 'njt_nofi_lb_text_wpml_translate'
wp option delete 'njt_nofi_lb_text_mobile_wpml_translate'
wp option delete 'njt_nofi_lb_url_wpml_translate'
wp option delete 'njt_nofi_lb_url_mobile_wpml_translate'
wp option delete 'njt_is_override_theme_mod'
wp option delete 'njt_is_override_theme_mod_ver14'
wp option delete 'njt_nofi_first_time_active'
wp option delete 'njt_nofi_version'

