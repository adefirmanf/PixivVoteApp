/* solium-disable */
pragma solidity ^0.4.23;

contract Member{

    uint public Votecount;

    struct Member{ //Also known as Voters
        bool Boomarked;
        address AddressMember;
        uint VoteCount;
    }

}

contract PixivRanking{
    struct Illustrator{
            uint IllustratorID;
            string name;
            uint256[] images;
        }
        
        struct Image{
            uint256 ImageID;
            uint32 Bookmarkscount;
            string imageName;
        }   
        
        mapping (address => Illustrator) illustrator;
        mapping (uint256 => Image) images;
        
        address[] public IllustratorAccs;
        
        
        function AddIllustrator (address _address, uint _IllustratorID, string _name) public {
            var illust = illustrator[_address];
            illust.IllustratorID = _IllustratorID;
            illust.name = _name;
            IllustratorAccs.push(_address) -1;
        }
        
        function GetArray() public view returns(address[]){
            return IllustratorAccs;
        }
        
        function AddImage (address _IllustratorImage, uint256 _imageID, string _nameImage) public {
            var image = images[_imageID];
            image.ImageID = _imageID;
            image.imageName = _nameImage;
            illustrator[_IllustratorImage].images.push(_imageID) -1;
        }
        
        function GetImage(address _IllustratorImage) public returns (uint[]){
            return illustrator[_IllustratorImage].images;
        }
        
        function IndividualImage(address _IllustratorImage) public returns (bool){
            
            return false;
        }
        
        function AddBookmark(address _IllustratorImage, uint256 _imageID) public {
            var IllustImagelength = illustrator[_IllustratorImage].images.length;
            for(uint i = 0; i < IllustImagelength; i++){
                    if(illustrator[_IllustratorImage].images[i] == _imageID){
                    throw;  
                    } 
            }
            images[_imageID].Bookmarkscount = 1;    
        }

}