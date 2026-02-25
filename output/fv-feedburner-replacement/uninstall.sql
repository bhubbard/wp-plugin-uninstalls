-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fv_feedburner_replacement', 'fv_feedburner_replacement_deferred_notices', 'fv_feedburner_replacement_deferred_errors', 'fv_feedburner_replacement_ad_disable');

