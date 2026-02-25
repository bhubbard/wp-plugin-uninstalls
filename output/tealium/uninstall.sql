-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tealiumDataStyle', 'tealiumExcludeMetaData', 'tealiumAccount', 'tealiumProfile', 'tealiumEnvironment', 'tealiumExclusions', 'tealiumUtagSync', 'tealiumCacheBuster', 'tealiumDNSPrefetch', 'tealiumEUOnly', 'tealiumNamespace', 'tealiumTagCode', 'tealiumTag', 'tealiumTagLocation', 'tealiumTagType');

