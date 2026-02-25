-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vr_frases_options', 'vr_frases_version', 'vr_frases_activation_time', 'vr_frases_deactivation_time', 'vr_frases_needs_upgrade', 'vr_frases_last_upgrade_attempt', 'vr_frases_last_successful_upgrade', 'vr_frases_last_upgrade_log', 'vr_frases_failed_upgrade_log', 'vr_frases_upgrade_failed', 'vr_frases_upgrade_notice_shown', 'vr_frases_upgrade_log', 'wiki_lang', 'vr_frases_cleanup_done', 'vr_frases_last_cleanup_log', 'vr_frases_debug_mode', 'vr_frases_debug_logs', 'vr_frases_upgrade_lock', 'vr_frases_clases_for_js', 'vr_frases_temas_for_js', 'vr_frases_cache');

