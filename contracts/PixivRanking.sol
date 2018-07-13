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
        
        mapping (address => Illustrator) public illustrator;
        mapping (uint256 => Image) public images;
        
        address[] public IllustratorAccs;
        
        //Creating an account
        function AddIllustrator (uint _IllustratorID, string _name) public  {
            var illust = illustrator[msg.sender];
            illust.IllustratorID = _IllustratorID;
            illust.name = _name;
            IllustratorAccs.push(msg.sender) -1;
        }
        
        function GetArray() public view returns(address[]){
            return IllustratorAccs;
        }
        
        function AddImage (uint256 _imageID, string _nameImage) public {
            var image = images[_imageID];
            image.ImageID = _imageID;
            image.imageName = _nameImage;
            illustrator[msg.sender].images.push(_imageID) -1;
        }
        
        function GetImage() public view returns (uint256[]){
            return illustrator[msg.sender].images;
        }
        
        function IndividualImage(address _IllustratorImage) public view returns (bool){
            return false;
        }
        
        function AddBookmark(uint256 _imageID) public {
            var IllustImagelength = illustrator[msg.sender].images.length;
            for(uint i = 0; i < IllustImagelength; i++){
                    if(illustrator[msg.sender].images[i] == _imageID){
                    throw;  //ERROR cause owner can't bookmarked his image.
                    } 
            }
            images[_imageID].Bookmarkscount = 1;    
        }

        function CheckSender() public view returns (address){
            return msg.sender;
        }

}