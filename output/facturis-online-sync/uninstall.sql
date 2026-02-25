-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fsync_auth_apikey', 'fsync_auth_username', 'fsync_auth_password', 'fsync_auth_fiscalcode', 'fsync_option_autosyncstock', 'fsync_option_autosyncorder', 'fsync_option_filterstock', 'fsync_option_syncordersas', 'fsync_option_proformaserie', 'fsync_option_daysago', 'fsync_option_addproforma', 'fsync_option_addinvoice', 'fsync_option_viewproforma', 'fsync_option_viewinvoice', 'fsync_option_editproforma', 'fsync_option_editinvoice', 'fsync_option_withdiscount', 'fsync_option_proformaserie2', 'fsync_option_invoiceserie');

