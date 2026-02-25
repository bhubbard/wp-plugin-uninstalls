#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'r34ics_version'
wp option delete 'r34ics_admin_access'
wp option delete 'r34ics_deferred_admin_notices'
wp option delete 'r34ics_paused'
wp option delete 'r34ics_previous_version'
wp option delete 'r34ics_display_calendar_memory_limit'
wp option delete 'r34ics_transients_expiration'
wp option delete 'r34ics_colors_match_theme_json'
wp option delete 'r34ics_colors_darkmode'
wp option delete 'r34ics_allowed_hosts'
wp option delete 'r34ics_register_customizer'
wp option delete 'r34ics_locale'
wp option delete 'r34ics_display_add_calendar_button_false'
wp option delete 'r34ics_use_new_defaults_10_6'
wp option delete 'r34ics_default_shortcode'
wp option delete 'r34ics_transient_expiration'
wp option delete 'r34ics_url_get_contents_legacy_method'
wp option delete 'r34ics_ajax_by_default'
wp option delete 'r34ics_allowed_ports'
wp option delete 'r34ics_load_css_js_on_wp_enqueue_scripts'
wp option delete 'r34ics_feed_urls_permanent'
wp option delete 'r34ics_pre_wp53_deprecated'
wp option delete 'r34ics_i18n_locales'
wp option delete 'r34ics_feed_urls'
wp option delete 'r34ics_refreshed'
wp option delete 'r34ics_activation_redirect'
wp option delete 'r34ics_ajax_bypass_nonce'
wp option delete 'r34ics_admin_first_run'

# Delete Transients
wp transient delete 'r34ics_rate_limited'

