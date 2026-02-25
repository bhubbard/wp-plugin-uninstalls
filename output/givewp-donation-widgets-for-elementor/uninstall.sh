#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dw4elementor_activation_date'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dw4elementor_review_dismiss'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dw4elementor_review_dismiss'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dw4elementor_review_dismiss'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dw4elementor_review_dismiss'"
