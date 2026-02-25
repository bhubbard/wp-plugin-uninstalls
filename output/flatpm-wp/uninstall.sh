#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'flat_plugin_options_me'
wp option delete 'flat_pm_main'
wp option delete 'flat_pm_personalization'
wp option delete 'flat_pm_default_selectors'
wp option delete 'flat_pm_pagespeed'
wp option delete 'flat_pm_unfold'
wp option delete 'flat_pm_header_footer'
wp option delete 'flat_pm_stylization'
wp option delete 'flat_pm_advanced'
wp option delete 'flat_pm_css'
wp option delete 'flat_pm_license'
wp option delete 'fpm_migrate_3_1_06'

# Delete Transients
wp transient delete 'tax_transient'
wp transient delete 'license_transient'
wp transient delete 'flat_get_news'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'html'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'html'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'html'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'html'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'view'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'view'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'view'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'view'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'abgroup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'abgroup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'abgroup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'abgroup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fast'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fast'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fast'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fast'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'turned'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'turned'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'turned'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'turned'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lazy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lazy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lazy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lazy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exclude_block_flat_pm'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exclude_block_flat_pm'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exclude_block_flat_pm'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exclude_block_flat_pm'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'flat_pm_view'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'flat_pm_view'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'flat_pm_view'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'flat_pm_view'"
