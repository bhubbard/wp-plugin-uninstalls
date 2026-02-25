#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'catablog-options'
wp option delete 'catablogcart_pageid'
wp option delete 'catablogcart_hideprices'
wp option delete 'catablogcart_mpclientid'
wp option delete 'catablogcart_mpclientscrt'
wp option delete 'catablogcart_mpsandbox'
wp option delete 'catablogcart_emailfrom'
wp option delete 'catablogcart_emailsubject'
wp option delete 'catablogcart_emailhtml'
wp option delete 'catablogcart_emailtemplate'

