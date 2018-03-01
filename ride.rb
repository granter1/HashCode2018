class Ride

  attr_reader :distance, :time

  def initialize(rowStart,columnStart,rowFinish,columnFinish,earliestStart,latestFinish)
    @rowStart=rowStart
    @columnStart=columnStart
    @rowFinish=rowFinish
    @columnFinish=columnFinish
    @distance=(rowStart-rowFinish).abs + (columnStart-columnFinish).abs
    @start=earliestStart
    @finish=latestFinish
    @time = latestFinish - earliestStart
  end

end