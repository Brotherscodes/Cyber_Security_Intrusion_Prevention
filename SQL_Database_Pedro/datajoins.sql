SELECT fl."Flow ID",
	fl." Source IP",
    fl." Destination Port",
	fl." Destination IP",
	pa." Average Packet Size",
	pa." Bwd Packet Length Std"
INTO flow_summary
FROM flows as fl
LEFT JOIN packets as pa
ON fl."Flow ID" = pa."Flow ID";

SELECT fl."Flow ID",
	fl." Source IP",
	fl." Destination IP",
	ti." Flow IAT Std",
	ti." Flow Duration",
	ti." Timestamp"
INTO flow_time
FROM flows as fl
LEFT JOIN time as ti
ON fl."Flow ID" = ti."Flow ID";

SELECT ti." Timestamp",
	pa." Average Packet Size",
	pa." Bwd Packet Length Std",
	ti." Flow IAT Std",
	ti." Flow Duration"
INTO pac_time
FROM packets as pa
LEFT JOIN time as ti
ON pa." Timestamp" = ti." Timestamp";


