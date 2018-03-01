class Ride

  attr_reader :distance, :time, :start

  def initialize(rowStart,columnStart,rowFinish,columnFinish,earliestStart,latestFinish, id)
    @rowStart=rowStart
    @columnStart=columnStart
    @rowFinish=rowFinish
    @columnFinish=columnFinish
    @distance=(rowStart-rowFinish).abs + (columnStart-columnFinish).abs
    @start=earliestStart
    @finish=latestFinish
    @time = latestFinish - earliestStart
    @id = id
  end

  def to_s
    "#{@id}"
  end

end