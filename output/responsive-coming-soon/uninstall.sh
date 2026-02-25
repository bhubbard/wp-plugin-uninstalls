#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsm_rcs_plugin_options_dashboard'
wp option delete 'wpsm_rcs_plugin_options_templates'
wp option delete 'wpsm_rcs_plugin_options_general'
wp option delete 'wpsm_rcs_plugin_options_header'
wp option delete 'wpsm_rcs_plugin_options_countdown'
wp option delete 'wpsm_rcs_plugin_options_background'
wp option delete 'wpsm_rcs_plugin_options_text_and_color'
wp option delete 'wpsm_rcs_plugin_options_custom_css'
wp option delete 'wpsm_rcs_plugin_options_social'
wp option delete 'wpsm_rcs_plugin_options_about_us'
wp option delete 'wpsm_rcs_plugin_options_contact_us'
wp option delete 'wpsm_rcs_plugin_options_newsletter'
wp option delete 'wpsm_rcs_plugin_options_subscription_field'
wp option delete 'wpsm_rcs_review'

