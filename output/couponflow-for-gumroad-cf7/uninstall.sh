#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7g_gumroad_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7g_gumroad_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7g_gumroad_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7g_gumroad_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7g_coupon_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7g_coupon_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7g_coupon_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7g_coupon_log'"
