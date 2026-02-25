#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'unlitogd_banner_text'
wp option delete 'unlitogd_primary_color'
wp option delete 'unlitogd_secondary_color'
wp option delete 'unlitogd_policy_link'
wp option delete 'unlitogd_scripts_analytics'
wp option delete 'unlitogd_scripts_marketing'
wp option delete 'unlitogd_text_color'
wp option delete 'unlitogd_policy_version'
wp option delete 'unlitogd_revocation_button'
wp option delete 'unlitogd_banner_bg_color'
wp option delete 'unlitogd_secondary_btn_color'
wp option delete 'unlitogd_save_btn_color'
wp option delete 'unlitogd_overlay_color'

