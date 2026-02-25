-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('underConstructionDisplayOption', 'underConstructionCustomText', 'underConstructionHTML', 'underConstructionActivationStatus', 'underConstructionHTTPStatus', 'underConstructionRedirectURL', 'underConstructionIPWhitelist', 'underConstructionRequiredRole', 'underconstruction_global_notification', 'underConstructionArchive');

