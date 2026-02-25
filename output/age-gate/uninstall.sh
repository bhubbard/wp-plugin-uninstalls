#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'age_gate_legacy_css'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'age_gate_version'
wp option delete 'wp_age_gate_version'
wp option delete 'age_gate_updated_from'
wp option delete 'age_gate_theme_css'
wp option delete 'wp_age_gate_restrictions'
wp option delete 'wp_age_gate_messages'
wp option delete 'wp_age_gate_validation_messages'
wp option delete 'wp_age_gate_appearance'
wp option delete 'wp_age_gate_advanced'
wp option delete 'wp_age_gate_access'
wp option delete 'age_gate_dev'
wp option delete 'age_gate_encrypt_key'
wp option delete 'age_gate_encrypt_secret'

# Clear Cron Jobs
wp cron event delete 'age_gate/cron_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
