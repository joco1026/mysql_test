select lp.prov_key
from LOCATION_PROVIDER lp
join LOCATION l on lp.loc_key = l.loc_key
join LAB_ACCOUNT_LOCATION lal ON l.loc_key = lal.loc_key
where lal.lab_acct_key = 20
