#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ajaxcf_recipient'
wp option delete 'ajaxcf_subject'
wp option delete 'ajaxcf_confirm'
wp option delete 'ajaxcf_custom_css'

# Direct DB Queries (Fallback)
wp db query "DROP TABLE IF EXISTS wp_wp_design_form"
