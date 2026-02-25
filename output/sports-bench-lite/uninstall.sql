-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sports-bench-sport', 'sports-bench-season-year', 'sports-bench-season', 'sports-bench-display-game', 'sports-bench-week-number', 'sports-bench-player-page', 'sports-bench-team-page', 'sports-bench-box-score-page', 'sports-bench-display-map', 'sports-bench-week-maps-api-key', 'sports-bench-abbreviation-guide', 'sports-bench-basketball-halves', 'sports-bench-use-fonts', 'sports_bench_plugin_license_key', 'sports_bench_plugin_license_status', 'sports_bench_dashboard_widget_options', 'sports-bench-lite-upgrade-notice', 'sports_bench_plugin_lifetime_license', 'sports_bench_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sports_bench_game', 'sports_bench_photo_credit', 'sports_bench_video', 'sports_bench_game_preview_recap', 'sports_bench_standings_items', 'sports_bench_standings_league', 'sports_bench_standings_conference', 'sports_bench_standings_division', 'sports_bench_stats');
DELETE FROM wp_usermeta WHERE meta_key IN ('sports_bench_game', 'sports_bench_photo_credit', 'sports_bench_video', 'sports_bench_game_preview_recap', 'sports_bench_standings_items', 'sports_bench_standings_league', 'sports_bench_standings_conference', 'sports_bench_standings_division', 'sports_bench_stats');
DELETE FROM wp_termmeta WHERE meta_key IN ('sports_bench_game', 'sports_bench_photo_credit', 'sports_bench_video', 'sports_bench_game_preview_recap', 'sports_bench_standings_items', 'sports_bench_standings_league', 'sports_bench_standings_conference', 'sports_bench_standings_division', 'sports_bench_stats');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sports_bench_game', 'sports_bench_photo_credit', 'sports_bench_video', 'sports_bench_game_preview_recap', 'sports_bench_standings_items', 'sports_bench_standings_league', 'sports_bench_standings_conference', 'sports_bench_standings_division', 'sports_bench_stats');

