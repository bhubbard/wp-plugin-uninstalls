-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nwcoCurrentVersion', 'nwcoCurrentType', 'optShowOrderProducts', 'optStatusCompleted', 'optStatusOnhold', 'optStatusProcessing', 'optStatusPending', 'optStatusRefunded', 'optStatusCancelled', 'optStatusFailed', 'optPie3D', 'optShipping', 'optYear', 'optProd', 'optCat', 'optStatus', 'optTotal');

