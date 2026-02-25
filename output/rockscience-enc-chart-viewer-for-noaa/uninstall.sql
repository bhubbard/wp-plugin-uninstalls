-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rockscience_enc_default_lat', 'rockscience_enc_default_lng');

