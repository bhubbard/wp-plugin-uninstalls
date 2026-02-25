#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sports-bench-sport'
wp option delete 'sports-bench-season-year'
wp option delete 'sports-bench-season'
wp option delete 'sports-bench-display-game'
wp option delete 'sports-bench-week-number'
wp option delete 'sports-bench-player-page'
wp option delete 'sports-bench-team-page'
wp option delete 'sports-bench-box-score-page'
wp option delete 'sports-bench-display-map'
wp option delete 'sports-bench-week-maps-api-key'
wp option delete 'sports-bench-abbreviation-guide'
wp option delete 'sports-bench-basketball-halves'
wp option delete 'sports-bench-use-fonts'
wp option delete 'sports_bench_plugin_license_key'
wp option delete 'sports_bench_plugin_license_status'
wp option delete 'sports_bench_dashboard_widget_options'
wp option delete 'sports-bench-lite-upgrade-notice'
wp option delete 'sports_bench_plugin_lifetime_license'
wp option delete 'sports_bench_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sports_bench_game'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sports_bench_game'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sports_bench_game'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sports_bench_game'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sports_bench_photo_credit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sports_bench_photo_credit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sports_bench_photo_credit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sports_bench_photo_credit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sports_bench_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sports_bench_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sports_bench_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sports_bench_video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sports_bench_game_preview_recap'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sports_bench_game_preview_recap'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sports_bench_game_preview_recap'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sports_bench_game_preview_recap'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sports_bench_standings_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sports_bench_standings_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sports_bench_standings_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sports_bench_standings_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sports_bench_standings_league'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sports_bench_standings_league'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sports_bench_standings_league'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sports_bench_standings_league'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sports_bench_standings_conference'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sports_bench_standings_conference'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sports_bench_standings_conference'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sports_bench_standings_conference'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sports_bench_standings_division'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sports_bench_standings_division'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sports_bench_standings_division'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sports_bench_standings_division'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sports_bench_stats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sports_bench_stats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sports_bench_stats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sports_bench_stats'"
