-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kkd_db_version', 'mode', 'tpk', 'tsk', 'lpk', 'lsk', 'prc', 'ths', 'adc', 'cap');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sold', '_heading', '_message', '_subject', '_merchant', '_currency', '_amount', '_successmsg', '_paybtn', '_loggedin', '_txncharge');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sold', '_heading', '_message', '_subject', '_merchant', '_currency', '_amount', '_successmsg', '_paybtn', '_loggedin', '_txncharge');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sold', '_heading', '_message', '_subject', '_merchant', '_currency', '_amount', '_successmsg', '_paybtn', '_loggedin', '_txncharge');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sold', '_heading', '_message', '_subject', '_merchant', '_currency', '_amount', '_successmsg', '_paybtn', '_loggedin', '_txncharge');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

