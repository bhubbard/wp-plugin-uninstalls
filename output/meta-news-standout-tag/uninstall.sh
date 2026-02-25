#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'condence_metabox_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'condence_metabox_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'condence_metabox_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'condence_metabox_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'condence_metabox_standout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'condence_metabox_standout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'condence_metabox_standout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'condence_metabox_standout'"
