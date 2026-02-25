-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gritonl_cwac_acurl', 'gritonl_cwac_acapikey', 'gritonl_cwac_acgood', 'gritonl_cwac_aclist', 'gritonl_cwac_accode', 'gritonl_cwac_accodeon', 'gritonl_cwac_aclists', 'gritonl_cwac_actags');

