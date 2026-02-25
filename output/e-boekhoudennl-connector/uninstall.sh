#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ebh_settings'
wp option delete 'eboekhouden_username_text'
wp option delete 'eboekhouden_security_code_1_text'
wp option delete 'eboekhouden_security_code_2_text'
wp option delete 'eboekhouden_code_1_text'
wp option delete 'eboekhouden_code_2_text'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mutation_nr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mutation_nr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mutation_nr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mutation_nr'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
