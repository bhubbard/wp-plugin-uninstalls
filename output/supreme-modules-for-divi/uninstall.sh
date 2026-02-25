#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dsm_flush_rewrite_rules_flag'
wp option delete 'dsm-supreme-modules-for-divi-no-bug'
wp option delete 'dsm-supreme-modules-for-divi-activation-date'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-activation-date'"
wp option delete 'dsm_settings_misc'
wp option delete 'dsm_settings_social_media'
wp option delete 'dsm_theme_builder'
wp option delete 'dsm_general'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dsm-header-footer-meta-box-options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dsm-header-footer-meta-box-options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dsm-header-footer-meta-box-options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dsm-header-footer-meta-box-options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dsm-css-classes-meta-box-options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dsm-css-classes-meta-box-options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dsm-css-classes-meta-box-options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dsm-css-classes-meta-box-options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dsm-remove-default-footer-meta-box-options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dsm-remove-default-footer-meta-box-options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dsm-remove-default-footer-meta-box-options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dsm-remove-default-footer-meta-box-options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dsm-footer-show-on-blank-template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dsm-footer-show-on-blank-template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dsm-footer-show-on-blank-template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dsm-footer-show-on-blank-template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dsm-footer-show-on-404-template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dsm-footer-show-on-404-template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dsm-footer-show-on-404-template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dsm-footer-show-on-404-template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
