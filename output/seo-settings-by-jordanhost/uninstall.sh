#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seo_settings_by_jordanhost_options'
wp option delete 'seo_settings_by_jordanhost_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seo_settings_by_jordanhost_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seo_settings_by_jordanhost_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seo_settings_by_jordanhost_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seo_settings_by_jordanhost_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seo_settings_by_jordanhost_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seo_settings_by_jordanhost_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seo_settings_by_jordanhost_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seo_settings_by_jordanhost_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seo_settings_by_jordanhost_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seo_settings_by_jordanhost_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seo_settings_by_jordanhost_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seo_settings_by_jordanhost_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seo_settings_by_jordanhost_noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seo_settings_by_jordanhost_noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seo_settings_by_jordanhost_noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seo_settings_by_jordanhost_noindex'"
