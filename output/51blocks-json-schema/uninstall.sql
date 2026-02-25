-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('genAddTo', 'gen_page_ids', 'genType', 'genURL', 'genMapURL', 'genEmail', 'genStreet', 'genCity', 'genState', 'genZip', 'genDescription', 'genName', 'genTelephone', 'genDayMo', 'genDayTu', 'genDayWe', 'genDayTh', 'genDayFr', 'genDaySa', 'genDaySu', 'genOPHours', 'genCLHours', 'genLat', 'genLon', 'genGPlus', 'jsgen_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('genAddTo', 'gen_page_ids', 'genType', 'genURL', 'genMapURL', 'genEmail', 'genStreet', 'genCity', 'genState', 'genZip', 'genDescription', 'genName', 'genTelephone', 'genDayMo', 'genDayTu', 'genDayWe', 'genDayTh', 'genDayFr', 'genDaySa', 'genDaySu', 'genOPHours', 'genCLHours', 'genLat', 'genLon', 'genGPlus', 'jsgen_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('genAddTo', 'gen_page_ids', 'genType', 'genURL', 'genMapURL', 'genEmail', 'genStreet', 'genCity', 'genState', 'genZip', 'genDescription', 'genName', 'genTelephone', 'genDayMo', 'genDayTu', 'genDayWe', 'genDayTh', 'genDayFr', 'genDaySa', 'genDaySu', 'genOPHours', 'genCLHours', 'genLat', 'genLon', 'genGPlus', 'jsgen_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('genAddTo', 'gen_page_ids', 'genType', 'genURL', 'genMapURL', 'genEmail', 'genStreet', 'genCity', 'genState', 'genZip', 'genDescription', 'genName', 'genTelephone', 'genDayMo', 'genDayTu', 'genDayWe', 'genDayTh', 'genDayFr', 'genDaySa', 'genDaySu', 'genOPHours', 'genCLHours', 'genLat', 'genLon', 'genGPlus', 'jsgen_code');

