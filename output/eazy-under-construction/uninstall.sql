-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('underConstructionActivationStatus', 'underConstructionDisplayOption', 'underConstructionCustomText', 'underConstructionHTML', 'underConstructionHTTPStatus', 'underConstructionRedirectURL', 'underConstructionIPWhitelist', 'underConstructionRequiredRole', 'underConstructionArchive');

