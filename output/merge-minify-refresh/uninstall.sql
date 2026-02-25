-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mmr-outputbuffering', 'mmr-nomergecss', 'mmr-nocheckcssimports', 'mmr-nocheckjsmodules', 'mmr-nomergejs', 'mmr-nocssmin', 'mmr-nojsmin', 'mmr-http2push', 'mmr-http2push-css', 'mmr-http2push-js', 'mmr-gzip', 'mmr-ignore', 'mmr-global-styles', 'mmr-merge-inline');

