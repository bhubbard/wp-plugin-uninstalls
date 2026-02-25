#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_codecorun_por_rules_cached-%' OR option_name LIKE '_site_transient_codecorun_por_rules_cached-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_codecorun_por_offers_cached-%' OR option_name LIKE '_site_transient_codecorun_por_offers_cached-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_codecorun_por_fallback_cached-%' OR option_name LIKE '_site_transient_codecorun_por_fallback_cached-%'"
wp transient delete 'codecorun_por_rules_cached'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'codecorun-por-offers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'codecorun-por-offers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'codecorun-por-offers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'codecorun-por-offers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'codecorun-por-rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'codecorun-por-rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'codecorun-por-rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'codecorun-por-rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'codecorun-por-fallback'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'codecorun-por-fallback'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'codecorun-por-fallback'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'codecorun-por-fallback'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'codecorun_por_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'codecorun_por_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'codecorun_por_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'codecorun_por_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
