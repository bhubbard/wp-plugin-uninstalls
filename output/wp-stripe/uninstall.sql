-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_stripe_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp-stripe-public', 'wp-stripe-name', 'wp-stripe-email', 'wp-stripe-live', 'wp-stripe-date', 'wp-stripe-amount', 'wp-stripe-currency', 'wp-stripe-fee', 'wp-stripe-project-transactions', 'wp-stripe-project-funded');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp-stripe-public', 'wp-stripe-name', 'wp-stripe-email', 'wp-stripe-live', 'wp-stripe-date', 'wp-stripe-amount', 'wp-stripe-currency', 'wp-stripe-fee', 'wp-stripe-project-transactions', 'wp-stripe-project-funded');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp-stripe-public', 'wp-stripe-name', 'wp-stripe-email', 'wp-stripe-live', 'wp-stripe-date', 'wp-stripe-amount', 'wp-stripe-currency', 'wp-stripe-fee', 'wp-stripe-project-transactions', 'wp-stripe-project-funded');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp-stripe-public', 'wp-stripe-name', 'wp-stripe-email', 'wp-stripe-live', 'wp-stripe-date', 'wp-stripe-amount', 'wp-stripe-currency', 'wp-stripe-fee', 'wp-stripe-project-transactions', 'wp-stripe-project-funded');

