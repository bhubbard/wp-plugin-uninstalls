#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simply-static'
wp option delete 'simply-static-use-single'
wp option delete 'simply-static-use-build'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'simply-static-%'"
wp option delete 'simply-static-404-only'
wp option delete 'fs_accounts'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_multisite_export_running'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_blog_exported'"
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_total_pages'"
wp option delete 'simply_static_delayed_until'
wp option delete 'simply_static_elementor_defaults_set'
wp option delete 'elementor_meta_generator_tag'
wp option delete 'elementor_css_print_method'
wp option delete 'elementor_lazy_load_background_images'
wp option delete 'elementor_element_cache_ttl'
wp option delete 'elementor_experiment-e_font_icon_svg'
wp option delete 'elementor_experiment-e_optimized_markup'
wp option delete 'wpseo-premium-redirects-base'

# Delete Transients
wp transient delete 'simply_static_has_build_terms'
wp transient delete 'simply_static_checks'
wp transient delete 'simply_static_failed_tests'

# Clear Cron Jobs
wp cron event delete 'simply_static_site_export_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
