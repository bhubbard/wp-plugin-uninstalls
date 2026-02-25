-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('la_sentinelle-honeypot', 'la_sentinelle-nonce', 'la_sentinelle-timeout', 'la_sentinelle-sfs', 'la_sentinelle-ajax', 'la_sentinelle-wpcomment', 'la_sentinelle-wplogin', 'la_sentinelle-wppassword', 'la_sentinelle-wpregister', 'la_sentinelle-everest', 'la_sentinelle-formidable', 'la_sentinelle-forminator', 'la_sentinelle-noptin', 'la_sentinelle-woo-registration', 'la_sentinelle-wpforms', 'la_sentinelle-wpjobmanager', 'la_sentinelle-save_comments', 'la_sentinelle-remove_comments', 'la_sentinelle-caldera_blocked', 'la_sentinelle-cf7_blocked', 'la_sentinelle-everest_blocked', 'la_sentinelle-experiment', 'la_sentinelle-formidable_blocked', 'la_sentinelle-forminator_blocked', 'la_sentinelle-honeypot_value', 'la_sentinelle-noptin_blocked', 'la_sentinelle-version', 'la_sentinelle-wpcomments_blocked', 'la_sentinelle-wpforms_blocked', 'la_sentinelle-wpjobmanager_blocked', 'la_sentinelle-wplogin_blocked', 'la_sentinelle-wppassword_blocked', 'la_sentinelle-wpregister_blocked', 'la_sentinelle-edd-disable-ajax');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lasent_plugin_slug', 'lasent_spamfilters', 'la_sentinelle_nonce', 'la_sentinelle_honeypot', 'la_sentinelle_timeout', 'la_sentinelle_ajax', 'la_sentinelle_sfs');
DELETE FROM wp_usermeta WHERE meta_key IN ('lasent_plugin_slug', 'lasent_spamfilters', 'la_sentinelle_nonce', 'la_sentinelle_honeypot', 'la_sentinelle_timeout', 'la_sentinelle_ajax', 'la_sentinelle_sfs');
DELETE FROM wp_termmeta WHERE meta_key IN ('lasent_plugin_slug', 'lasent_spamfilters', 'la_sentinelle_nonce', 'la_sentinelle_honeypot', 'la_sentinelle_timeout', 'la_sentinelle_ajax', 'la_sentinelle_sfs');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lasent_plugin_slug', 'lasent_spamfilters', 'la_sentinelle_nonce', 'la_sentinelle_honeypot', 'la_sentinelle_timeout', 'la_sentinelle_ajax', 'la_sentinelle_sfs');

