-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ownerrez_apiRoot', 'ownerrez_username', 'ownerrez_token', 'ownerrez_externalSiteName', 'ownerrez_webhookToken', 'ownerrez_externalSiteId', 'ownerrez_do_activation_redirect');

