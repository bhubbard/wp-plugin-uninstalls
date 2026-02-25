-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('DataAnalysis1on1Secure', 'APIKey1on1Secure', 'OnlyUSAVisitor1on1Secure', 'TorUser1on1Secure', 'ActionForBadIPs1on1Secure', 'ErrorPageForBadIPs1on1Secure', 'toruser1on1secure', 'errorpageforbadips1on1secure', 'actionforbadips1on1secure');
DELETE FROM wp_options WHERE option_name LIKE '1on1secure_%';

