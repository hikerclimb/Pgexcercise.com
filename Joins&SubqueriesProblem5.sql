select distinct concat(mbs.firstname, ' ' ,mbs.surname) as member, facs.name as facility
	from 
		cd.facilities facs
		inner join cd.bookings bks
			on facs.facid = bks.facid
		inner join cd.members mbs
			on bks.memid = mbs.memid
	where 
		facs.name in ('Tennis Court 2','Tennis Court 1')
order by member, facility;  