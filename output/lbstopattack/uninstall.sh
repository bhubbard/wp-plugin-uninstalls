#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lbsa_onlyfront'
wp option delete 'lbsa_namespaces'
wp option delete 'lbsa_levelLFI'
wp option delete 'lbsa_sendnotification'
wp option delete 'lbsa_sendto'
wp option delete 'lbsa_raiseerror'
wp option delete 'lbsa_redirurl'
wp option delete 'lbsa_errorcode'
wp option delete 'lbsa_errormsg'
wp option delete 'lbsa_ipblock'
wp option delete 'lbsa_ipblocktime'
wp option delete 'lbsa_ipblockcount'
wp option delete 'lbsa_checkwp'
wp option delete 'lbsa_unactive'
wp option delete 'lbsa_db_version'

