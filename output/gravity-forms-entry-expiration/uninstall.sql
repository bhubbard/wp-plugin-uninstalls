-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gf_entryexpiration_message_displayed', 'gf_entryexpiration_lifetime_processed');

