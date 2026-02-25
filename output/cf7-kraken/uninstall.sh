#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'integrations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'integrations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'integrations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'integrations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf7_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf7_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf7_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf7_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slack'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slack'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slack'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slack'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailchimp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailchimp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailchimp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailchimp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webhook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webhook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webhook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webhook'"
