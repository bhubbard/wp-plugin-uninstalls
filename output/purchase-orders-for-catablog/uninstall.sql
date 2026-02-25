-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('catablog-options', 'catablogcart_pageid', 'catablogcart_hideprices', 'catablogcart_mpclientid', 'catablogcart_mpclientscrt', 'catablogcart_mpsandbox', 'catablogcart_emailfrom', 'catablogcart_emailsubject', 'catablogcart_emailhtml', 'catablogcart_emailtemplate');

