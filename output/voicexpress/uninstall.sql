-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_voicexpress_affiliate_code', 'voicexpress_crontab', 'voicexpress_player', 'voicexpress_theme', 'voicexpress_show_spotify_icon', 'voicexpress_spotify_url', 'voicexpress_hide_download', 'voicexpress_hide_text', 'voicexpress_enable_spotify', 'voicexpress_single_start', 'voicexpress_single_end', 'voicexpress_auto', 'voicexpress_credits', 'voicexpress_voice', 'voicexpress_secret_key', 'voicexpress_podcast_rss', 'voicexpress_podcast_title', 'voicexpress_podcast_description', 'voicexpress_promo_code', 'voicexpress_promo_code_used', 'voicexpress_account_connected');
DELETE FROM wp_options WHERE option_name LIKE 'voicexpress_cache_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_voicexpress_audio', '_voicexpress_gerar_audio', '_voicexpress_voice', 'voicexpress_hash', 'voicexpress_sent');
DELETE FROM wp_usermeta WHERE meta_key IN ('_voicexpress_audio', '_voicexpress_gerar_audio', '_voicexpress_voice', 'voicexpress_hash', 'voicexpress_sent');
DELETE FROM wp_termmeta WHERE meta_key IN ('_voicexpress_audio', '_voicexpress_gerar_audio', '_voicexpress_voice', 'voicexpress_hash', 'voicexpress_sent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_voicexpress_audio', '_voicexpress_gerar_audio', '_voicexpress_voice', 'voicexpress_hash', 'voicexpress_sent');

