#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gritonl_cwac_acurl'
wp option delete 'gritonl_cwac_acapikey'
wp option delete 'gritonl_cwac_acgood'
wp option delete 'gritonl_cwac_aclist'
wp option delete 'gritonl_cwac_accode'
wp option delete 'gritonl_cwac_accodeon'
wp option delete 'gritonl_cwac_aclists'
wp option delete 'gritonl_cwac_actags'

