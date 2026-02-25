#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_vgwortmetaname'
wp option delete 'tl-vgwort-options'
wp option delete 'wp-worthy-pixel-table-version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'db-%'"
wp option delete 'wp-worthy-overlong-titles'
wp option delete 'wp-worthy-filter-shortcodes'
wp option delete 'worthy_premium_marker_updates'
wp option delete 'wp-worthy-enable-webarea'
wp option delete 'wp-worthy-enable-burn'
wp option delete 'wp-worthy-version'
wp option delete 'worthy_version'
wp option delete 'wp-worthy-prevent-lazy-loading'
wp option delete 'wp-worthy-lazy-loading'
wp option delete 'wp-worthy-marker-position'
wp option delete 'wp-worthy-embed-on-feed'
wp option delete 'wp-worthy-embed-on-rest'
wp option delete 'wp-worthy-embed-on-export'
wp option delete 'wp-worthy-locale-filter'
wp option delete 'wp-worthy-pixel-classes'
wp option delete 'wp-worthy-premium-counter'
wp option delete 'wp-worthy-enable-account-sharing'
wp option delete 'wp-worthy-default-account'
wp option delete 'worthy_premium_markers_imported'
wp option delete 'worthy_markers_imported_csv'
wp option delete 'worthy_premium_markers_claimed'
wp option delete 'wp-worthy-check-missing'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wp-worthy-migration-stats-%' OR option_name LIKE '_site_transient_wp-worthy-migration-stats-%'"

# Clear Cron Jobs
wp cron event delete 'wp-worthy-cron-daily'
wp cron event delete 'wp-worthy-cron-hourly'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-worthy-autocreate-webranges'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-worthy-autocreate-webranges'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-worthy-autocreate-webranges'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-worthy-autocreate-webranges'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'worthy_lyric'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'worthy_lyric'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'worthy_lyric'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'worthy_lyric'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'worthy_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'worthy_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'worthy_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'worthy_ignore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-worthy-overlong-titles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-worthy-overlong-titles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-worthy-overlong-titles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-worthy-overlong-titles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'worthy_premium_status_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'worthy_premium_status_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'worthy_premium_status_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'worthy_premium_status_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'worthy_premium_markers_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'worthy_premium_markers_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'worthy_premium_markers_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'worthy_premium_markers_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-worthy-unknown-reportable-pixels'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-worthy-unknown-reportable-pixels'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-worthy-unknown-reportable-pixels'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-worthy-unknown-reportable-pixels'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'worthy_premium_marker_updates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'worthy_premium_marker_updates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'worthy_premium_marker_updates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'worthy_premium_marker_updates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'worthy_premium_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'worthy_premium_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'worthy_premium_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'worthy_premium_password'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'worthy_premium_server'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'worthy_premium_server'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'worthy_premium_server'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'worthy_premium_server'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'worthy_premium_session'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'worthy_premium_session'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'worthy_premium_session'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'worthy_premium_session'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'worthy_premium_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'worthy_premium_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'worthy_premium_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'worthy_premium_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-worthy-auto-assign-markers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-worthy-auto-assign-markers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-worthy-auto-assign-markers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-worthy-auto-assign-markers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-worthy-disable-output'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-worthy-disable-output'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-worthy-disable-output'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-worthy-disable-output'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-worthy-duplicate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-worthy-duplicate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-worthy-duplicate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-worthy-duplicate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-worthy-default-server'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-worthy-default-server'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-worthy-default-server'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-worthy-default-server'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-worthy-authorid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-worthy-authorid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-worthy-authorid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-worthy-authorid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-worthy-allow-account-sharing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-worthy-allow-account-sharing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-worthy-allow-account-sharing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-worthy-allow-account-sharing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-worthy-post-types'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-worthy-post-types'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-worthy-post-types'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-worthy-post-types'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-worthy-unknown-reportable-pixels-dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-worthy-unknown-reportable-pixels-dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-worthy-unknown-reportable-pixels-dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-worthy-unknown-reportable-pixels-dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-worthy-forename'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-worthy-forename'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-worthy-forename'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-worthy-forename'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-worthy-lastname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-worthy-lastname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-worthy-lastname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-worthy-lastname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-worthy-cardid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-worthy-cardid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-worthy-cardid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-worthy-cardid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'worthy_premium_markers_imported'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'worthy_premium_markers_imported'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'worthy_premium_markers_imported'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'worthy_premium_markers_imported'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'worthy_markers_imported_csv'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'worthy_markers_imported_csv'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'worthy_markers_imported_csv'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'worthy_markers_imported_csv'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'worthy_premium_markers_claimed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'worthy_premium_markers_claimed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'worthy_premium_markers_claimed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'worthy_premium_markers_claimed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'worthy_premium_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'worthy_premium_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'worthy_premium_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'worthy_premium_status'"
