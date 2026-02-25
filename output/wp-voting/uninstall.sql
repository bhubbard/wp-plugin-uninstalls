-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpv-voting-onoff', 'wpv-allow-author-vote', 'wpv-voted-custom-txt', 'wpv-vote-btn-custom-txt', 'wpv-custom-css', 'wpv-voting-alert-msg', 'wpv-allow-public-vote', 'wpv-voting-db-version', 'wpv-top-voted-scount');

