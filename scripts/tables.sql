CREATE TABLE IF NOT EXISTS tblChannels(
	Id INTEGER PRIMARY KEY AUTOINCREMENT,
	Name TEXT NOT NULL DEFAULT 'Unavailable',
	URL TEXT,
	YoutubeChannelId INTEGER,
	CreatedDate INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS tblLiveStatusType(
	Id INTEGER PRIMARY KEY AUTOINCREMENT,
	LiveStatus TEXT
);

CREATE TABLE IF NOT EXISTS tblAvailabilityType(
	Id INTEGER PRIMARY KEY AUTOINCREMENT,
	Availability TEXT
);

CREATE TABLE IF NOT EXISTS tblPlayList(
	Id INTEGER PRIMARY KEY AUTOINCREMENT,
	Title TEXT NOT NULL DEFAULT 'Unavailable',
	VideoCount INTEGER,
	ChannelId INTEGER,
	YoutubePlaylistID INTEGER,
	CreatedDate INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS tblDomains(
	Id INTEGER PRIMARY KEY AUTOINCREMENT,
	Domain TEXT DEFAULT 'Unavailable',
	CreatedDate INTEGER
);

CREATE TABLE IF NOT EXISTS tblTags(
	Id INTEGER PRIMARY KEY AUTOINCREMENT,
	Tag TEXT,
	IsUsed INTEGER NOT NULL DEFAULT 0,	
	CreatedDate INTEGER
);

CREATE TABLE IF NOT EXISTS tblVideoTags(
	Id INTEGER PRIMARY KEY AUTOINCREMENT,
	VideoId INTEGER NOT NULL,
	TagId INTEGER NOT NULL,
	CreatedDate INTEGER
);

CREATE TABLE IF NOT EXISTS tblFiles(
	Id INTEGER PRIMARY KEY AUTOINCREMENT,
	FileTypeId INTEGER,
	SourceId INTEGER,
	DomainId INTEGER,
	FilePath TEXT,
	FileName TEXT,
	Extension TEXT,
	FileSize INTEGER,
	FileSizeUnit TEXT,
	Resolution TEXT,
	ParentDirectory TEXT,	
	IsDeleted INTEGER,
	CreatedDate INTEGER
);

CREATE TABLE IF NOT EXISTS tblSourceType(
	Id INTEGER PRIMARY KEY AUTOINCREMENT,
	Source TEXT
);

CREATE TABLE IF NOT EXISTS tblFileType(
	Id INTEGER PRIMARY KEY AUTOINCREMENT,
	File TEXT
);

CREATE TABLE IF NOT EXISTS tblStreamType(
	Id INTEGER PRIMARY KEY AUTOINCREMENT,
	Stream TEXT
);

CREATE TABLE IF NOT EXISTS tblFormats(
	Id INTEGER PRIMARY KEY AUTOINCREMENT,
	Format TEXT,
	StreamId INTEGER
);

CREATE TABLE IF NOT EXISTS tblVideoFormat(
	Id INTEGER PRIMARY KEY AUTOINCREMENT,
	VideoId INTEGER,
	FormatId INTEGER
);