-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('castio_rewrite_flushed', 'castio_rewrite_sig', 'castio_hls_latency', 'castio_default_poll', 'castio_max_minutes', 'castio_invite_enabled', 'castio_invite_subject', 'castio_license_key', 'castio_stripe_pk', 'castio_stripe_sk', 'castio_default_currency', 'castio_invite_template', 'castio_license_status');
DELETE FROM wp_options WHERE option_name LIKE '%_last';
DELETE FROM wp_options WHERE option_name LIKE '%_win';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('castio_purchases', 'castio_purchases_detail');
DELETE FROM wp_usermeta WHERE meta_key IN ('castio_purchases', 'castio_purchases_detail');
DELETE FROM wp_termmeta WHERE meta_key IN ('castio_purchases', 'castio_purchases_detail');
DELETE FROM wp_commentmeta WHERE meta_key IN ('castio_purchases', 'castio_purchases_detail');

